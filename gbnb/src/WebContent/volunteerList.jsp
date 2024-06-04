<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Volunteer List</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<style>
.volunteerListWholeContainer {
	text-align: center;
	margin: auto;
	width: 980px;
	border: 1px black solid;
	/* background-color:red; */
}
/* 봉사 카테고리 필터 css */
.volunteerListCategoryContainer>button, .filter-btn {
	margin: 5px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.volunteerListCategory-btn {
	background-color: #ffe282;
	color: rgb(0, 0, 0);
}

.filter-btn {
	background-color: #8b8b8b;
	color: rgb(22, 22, 22);
	position: relative;
}

.remove-btn {
	background-color: #141414;
	color: rgb(255, 255, 255);
	border: none;
	border-radius: 50%;
	width: 20px;
	height: 20px;
	display: inline-block;
	text-align: center;
	line-height: 20px;
	cursor: pointer;
	position: absolute;
	top: -5px;
	right: -5px;
}
/* input type 필터 */
.voluntteerListFilterInput {
	font-size: 13px;
}

.voluntteerListFilterInput input, select {
	font-size: 11px;
}

.voluntteerListFilterInput tr td {
	padding: 0px 45px 0px 0px;
}

.voluntteerListFilterInput {
	padding-left: 20px;
}
/* 구인리스트 */
.volunteerListvolunteerRecruitList>p {
	text-align: left;
	padding: 0px 5px 0px 5px;
}

.volunteerListvolunteerRecruitList>table {
	margin: 5px;
	text-align: left;
	width: 100%;
	border: 1px solid;
	margin: 2px;
}
</style>
</head>
<body>
	<!--전체 div-->
	<div class="volunteerListWholeContainer">
		<div class="volunteerListCategoryContainer">
			<button onclick="addFilter('청소/배식')">청소/배식</button>
			<button onclick="addFilter('산책')">산책</button>
			<button onclick="addFilter('목욕')">목욕</button>
			<button onclick="addFilter('사진')">사진</button>
			<button onclick="addFilter('미용')">미용</button>
			<button onclick="addFilter('이동')">이동</button>
			<button onclick="addFilter('의료')">의료</button>
		</div>
		<div id="volunteerListFilterContainer"></div>

		<table class="voluntteerListFilterInput">
			<tr>
				<td>봉사기간 <input name="wantDay" type="date"></td>
				<td>봉사명 <input name="volSearchInput" type="search"></td>
				<td>센터명 <input name="ctrSearchInput" type="search"></td>
				<td>지역 <select onchange="selectRegion(this)">
						<option>행정구역 선택</option>
						<option value="a">전체</option>
						<option value="b">서울특별시</option>
						<option value="c">경기도</option>
						<option value="d">충청남도</option>
						<option value="e">충청북도</option>
						<option value="f">강원도</option>
						<option value="g">전라남도</option>
						<option value="h">전라북도</option>
						<option value="i">경상남도</option>
						<option value="j">경상북도</option>
						<option value="k">제주시</option>
				</select> <select id="volunteerListSelectCity">
						<option>도시 선택</option>
				</select>
				</td>
			</tr>
		</table>

		<div class="volunteerListVolRecruitList">
			<p>구인 리스트</p>
<c:forEach items="${regList}" var="regist">
			<table>
				<tr>
					<td><b>&lt;구인 제목1&gt;</b></td>
				</tr>
				<tr>
					<td>모집기관</td><td>${regist.vNo }</td>
					<td>봉사기간</td><td>${regist.vStartDate}+${ ~ }+${regist.vEndDate}</td>
					<td>활동요일</td><td>${regist.vWorkingDay }</td>
				</tr>
			</table>
</c:forEach>
		</div>
	</div>


	<script>
		// 행정구역/시도 select
		function selectRegion(cc) {
		var region_all = "";  //전체
		var region_seoul = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서울특별시", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "인천광여시", "종로구", "중구", "중랑구"];  //서울특별시
		var region_kyungki= ["고양시", "과천시", "광명시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시", "양평시", "여주시", "연천군", "오산시", "용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"]; //경기도
		var region_chungnam = ["계룡시", "공주시", "금산군", "논산시", "당진시", "대전광역시", "보령시", "부여군", "서산시", "서천군", "세종시", "아산시", "연기군", "예산군", "천안시", "청양군", "태안군", "홍성군"];  //충청남도
		var region_chungbuk = ["괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청주시", "충주시"]; //충청북도
		var region_kangwon = ["강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"];  //강원도
		var region_jeonnam = ["강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군"];  //전라남도
		var region_jeonbuk = ["고창군", "군산시", "광주광역시", "김제시", "남원시", "무주군", "부안군", "순창군", "완주군", "익산시", "임실군", "장수군", "전주시", "정읍시", "진안군"];  //전라북도
		var region_kyungnam = ["거제시", "거창군", "고성군", "김해시", "남해군", "대구광역시", "밀양시", "부산광역시", "사천시", "산청군", "양산시", "울산광역시", "의령군", "진주시", "창녕군", "창원시", "통영시", "하동군", "함안군", "함양군", "합천군"];  //경상남도
		var region_kyungbuk = ["경산시", "경상북도", "경주시", "고령군", "구미시", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시"];  //경상북도
		var region_jeju = ["서귀포시", "제주시", "제주특별자치도"];  //제주시
		var target = document.getElementById("volunteerListSelectCity");

		if(cc.value == "a") var d = region_all;
		else if(cc.value == "b") var d = region_seoul;
		else if(cc.value == "c") var d = region_kyungki;
		else if(cc.value == "d") var d = region_chungnam;
		else if(cc.value == "e") var d = region_chungbuk;
		else if(cc.value == "f") var d = region_kangwon;
		else if(cc.value == "g") var d = region_jeonnam;
		else if(cc.value == "h") var d = region_jeonbuk;
		else if(cc.value == "i") var d = region_kyungnam;
		else if(cc.value == "j") var d = region_kyungbuk;
		else if(cc.value == "k") var d = region_jeju;

		target.options.length = 0;

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}	
	}

	// 봉사 카테고리 필터
	function addFilter(value) {
				const filterContainer = document.getElementById('volunteerListFilterContainer');
				const existingFilter = document.getElementById(`filter-${value}`);
				if (!existingFilter) {
					const filterBtn = document.createElement('button');
					filterBtn.className = 'filter-btn';
					filterBtn.id = `filter-${value}`;
					filterBtn.textContent = value;
					filterBtn.value = value;

					const removeBtn = document.createElement('span');
					removeBtn.className = 'remove-btn';
					removeBtn.textContent = 'x';
					removeBtn.onclick = () => removeFilter(value);

					filterBtn.appendChild(removeBtn);
					filterContainer.appendChild(filterBtn);
				}
			}

        function removeFilter(value) {
            const filterBtn = document.getElementById(`filter-${value}`);
            if (filterBtn) {
                filterBtn.remove();
            }
        }
	</script>
</body>
</html>

