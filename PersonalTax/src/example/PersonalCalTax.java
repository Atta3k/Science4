package example;

import javax.servlet.annotation.WebServlet;

@WebServlet
public class PersonalCalTax {
    public String CalTax(String wages){
        double[] start_wages = {85000, 60000, 40000, 30000, 17000, 8000, 5000, 1};
        double[] tax_rate = {0.45, 0.35, 0.3, 0.25, 0.2, 0.1, 0.03, 0};
        int wages_level = 0;
        double my_wage = Double.parseDouble(wages);
        if(my_wage <= 1){
            return "您输入的数据不合理";
        }
        for(int i=0; i<start_wages.length; i++){
            if(my_wage > start_wages[i]){
                wages_level = i;
                break;
            }
        }
        double tax = my_wage * tax_rate[wages_level];
        return String.valueOf(tax);
    }
}
