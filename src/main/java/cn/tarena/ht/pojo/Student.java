package cn.tarena.ht.pojo;

import java.util.Date;

public class Student extends BaseEntity {
    private String stuNo;
    private String name;
    private String gender;
    private Integer age;
    private String nation;
    private String cardNo;
    private Date graduateDate;
    private String teacherNoIn;
    private String teacherNoOut;
    private String classNo;
    private String major;
    private String isFullTime;
    private String phoneNo;
    private String qqNo;
    private String email;
    private String passwd;
    private String pageTopic;
    private Integer pageType;
    private String type="3";

    @Override
    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuNo='" + stuNo + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", nation='" + nation + '\'' +
                ", cardNo='" + cardNo + '\'' +
                ", graduateDate=" + graduateDate +
                ", teacherNoIn='" + teacherNoIn + '\'' +
                ", teacherNoOut='" + teacherNoOut + '\'' +
                ", classNo='" + classNo + '\'' +
                ", major='" + major + '\'' +
                ", isFullTime='" + isFullTime + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", qqNo='" + qqNo + '\'' +
                ", email='" + email + '\'' +
                ", passwd='" + passwd + '\'' +
                ", pageTopic='" + pageTopic + '\'' +
                ", pageType=" + pageType +
                '}';
    }

    public String getStuNo() {
        return stuNo;
    }

    public void setStuNo(String stuNo) {
        this.stuNo = stuNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public Date getGraduateDate() {
        return graduateDate;
    }

    public void setGraduateDate(Date graduateDate) {
        this.graduateDate = graduateDate;
    }

    public String getTeacherNoIn() {
        return teacherNoIn;
    }

    public void setTeacherNoIn(String teacherNoIn) {
        this.teacherNoIn = teacherNoIn;
    }

    public String getTeacherNoOut() {
        return teacherNoOut;
    }

    public void setTeacherNoOut(String teacherNoOut) {
        this.teacherNoOut = teacherNoOut;
    }

    public String getClassNo() {
        return classNo;
    }

    public void setClassNo(String classNo) {
        this.classNo = classNo;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getIsFullTime() {
        return isFullTime;
    }

    public void setIsFullTime(String isFullTime) {
        this.isFullTime = isFullTime;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getQqNo() {
        return qqNo;
    }

    public void setQqNo(String qqNo) {
        this.qqNo = qqNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getPageTopic() {
        return pageTopic;
    }

    public void setPageTopic(String pageTopic) {
        this.pageTopic = pageTopic;
    }

    public Integer getPageType() {
        return pageType;
    }

    public void setPageType(Integer pageType) {
        this.pageType = pageType;
    }
}