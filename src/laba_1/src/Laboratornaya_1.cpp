#include "ros/ros.h"
#include <iostream>
#include "std_msgs/Int64.h"
#include "std_msgs/Int8.h"
using namespace std;

ros::Publisher g_value_pub;

std_msgs::Int64 factorial(std_msgs::Int8 input_number)
{
    std_msgs::Int64 number_beetw_1;
    std_msgs::Int64 number_beetw_2;
    std_msgs::Int64 output_number;
    number_beetw_1.data = 1;
    number_beetw_2.data = 1;
    
    for(int i = 0; i < input_number.data; i++)
    {
        number_beetw_2.data = number_beetw_2.data * number_beetw_1.data;
        number_beetw_1.data = number_beetw_1.data + 1;
    }
    output_number.data = number_beetw_2.data;
    return output_number;
}

void recieve(const std_msgs::Int8& input_number)
{
    ROS_INFO("Received: %d", input_number.data);
    if(input_number.data < 0 || input_number.data > 20)
    {
        ROS_WARN("Number is so BIIIIIIIIIIIIIIIIIIG!!!");
    }
    else
    {
        std_msgs::Int64 factorial_number = factorial(input_number);
        ROS_INFO("Factorial value: %ld", factorial_number.data);
        g_value_pub.publish(factorial_number);
    }
    return;
}     
                                                                                                                           
int main(int argc, char **argv)
{
    ROS_INFO("Start!");
    
    ros::init(argc, argv, "factorial_number");
    ros::NodeHandle n;

    ros::Publisher factorial_number_pub = n.advertise<std_msgs::Int8>("/factorial_number", 10);
    ros::Subscriber value_sub = n.subscribe("/factorial_number", 10, recieve);
    g_value_pub = n.advertise<std_msgs::Int64>("/value", 10);

    ros::Rate loop_rate(1);
    std_msgs::Int8 number;

    while(ros::ok)
    {
        number.data = rand() % 50 + 0;
        factorial_number_pub.publish(number);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
