package cn.tarena.ht.pojo;

public class AdminUser extends BaseEntity {
    private String username;
    private String name;
    private String passwd;
    private String type = "1";

    @Override
    public String getType() {
        return type;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
}


