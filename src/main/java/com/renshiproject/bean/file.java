package com.renshiproject.bean;

public class file {
    private int file_id;
    private String file_name;
    private String type;
    private String file_path;
    private int file_number;

    @Override
    public String toString() {
        return "file{" +
                "file_id=" + file_id +
                ", file_name='" + file_name + '\'' +
                ", type='" + type + '\'' +
                ", file_path='" + file_path + '\'' +
                ", file_number=" + file_number +
                '}';
    }

    public int getFile_id() {
        return file_id;
    }

    public void setFile_id(int file_id) {
        this.file_id = file_id;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFile_path() {
        return file_path;
    }

    public void setFile_path(String file_path) {
        this.file_path = file_path;
    }

    public int getFile_number() {
        return file_number;
    }

    public void setFile_number(int file_number) {
        this.file_number = file_number;
    }
}
