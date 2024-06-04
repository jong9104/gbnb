package dc.human.gbnb.humanConnect.dto;

import java.time.LocalDate;

public class JoinDTO {
    private String u_Id;
    private String u_Pwd;
    private String u_Name;
    private String u_Sex;
    private LocalDate u_Birth;
    private String u_Addr1;
    private String u_Phone;
    private String u_Email;

    // Getters and setters
    public String getU_Id() {
        return u_Id;
    }

    public void setU_Id(String u_Id) {
        this.u_Id = u_Id;
    }

    public String getU_Pwd() {
        return u_Pwd;
    }

    public void setU_Pwd(String u_Pwd) {
        this.u_Pwd = u_Pwd;
    }

    public String getU_Name() {
        return u_Name;
    }

    public void setU_Name(String u_Name) {
        this.u_Name = u_Name;
    }

    public String getU_Sex() {
        return u_Sex;
    }

    public void setU_Sex(String u_Sex) {
        this.u_Sex = u_Sex;
    }

    public LocalDate getU_Birth() {
        return u_Birth;
    }

    public void setU_Birth(LocalDate u_Birth) {
        this.u_Birth = u_Birth;
    }

    public String getU_Addr1() {
        return u_Addr1;
    }

    public void setU_Addr1(String u_Addr1) {
        this.u_Addr1 = u_Addr1;
    }

    public String getU_Phone() {
        return u_Phone;
    }

    public void setU_Phone(String u_Phone) {
        this.u_Phone = u_Phone;
    }

    public String getU_Email() {
        return u_Email;
    }

    public void setU_Email(String u_Email) {
        this.u_Email = u_Email;
    }
}
