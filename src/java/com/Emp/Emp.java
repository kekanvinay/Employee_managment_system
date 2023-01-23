package com.Emp;

 public class Emp
 {
     private int id;
     private String Name;
     private int YOE;
     private String Designation;

       
        public int getId() {
            return id;
        }
        
        public void setId(int id) {
            this.id = id;
        }

        /**
         * @return the Name
         */
        public String getName() {
            return Name;
        }

        
        public void setName(String Name) {
            this.Name = Name;
        }

       
        public int getYOE() {
            return YOE;
        }

        /**
         * @param YOE the YOE to set
         */
        public void setYOE(int YOE) {
            this.YOE = YOE;
        }

        /**
         * @return the Designation
         */
        public String getDesignation() {
            return Designation;
        }

        /**
         * @param Designation the Designation to set
         */
        public void setDesignation(String Designation) {
            this.Designation = Designation;
        }

        public Emp(int id, String Name, int YOE, String Designation) {
            this.id = id;
            this.Name = Name;
            this.YOE = YOE;
            this.Designation = Designation;
        }

        public Emp() {
        }

        @Override
        public String toString() {
            return "Emp{" + "id=" + id + ", Name=" + Name + ", YOE=" + YOE + ", Designation=" + Designation + '}';
        }
 }

