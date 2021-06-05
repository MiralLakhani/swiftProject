import Foundation

//Parent class-BankUser
class BankUser
{
    var userid: Int
    var username: String
    var password: Int
    var gender: String
    var mobileno: Int
    
    //intialisation of all objects
    init(userid: Int, username: String, password: Int, gender: String, mobileno: Int)
    {
        self.userid=userid
        self.username=username
        self.password=password
        self.gender=gender
        self.mobileno=mobileno
    }
    
    //fuction for print details of all objects
    func printDetails()
    {
        print("User ID: \(userid) User Name: \(username) Password: \(password) gender: \(gender) Mobile Number: \(mobileno)")
    }
    
}

//Child Class-Account
class Account: BankUser
{
    var accounttype: String
    var balance: Double
    
    //initialisation of all objects
    init(userid: Int, username: String, password: Int, gender: String, mobileno: Int, accounttype: String, balance: Double)
    {
        self.accounttype=accounttype
        self.balance=balance
        super.init(userid: userid, username: username, password: password, gender: gender, mobileno: mobileno)
        
    }
    //funstion to print details
    override func printDetails()
    {
        super.printDetails()
        print("Account Type: \(accounttype) Balance: \(balance)")
    }
}

//create array and fill it

var detailsList = [BankUser]()

detailsList.append(BankUser(userid:111,username:"Miral Lakhani",password:123456,gender:"Female",mobileno:9586698237))
detailsList.append(BankUser(userid:222,username:"Manpreet Singh",password:234567,gender:"Male",mobileno:9986698237))
detailsList.append(BankUser(userid:333,username:"Najmeh Akbari",password:345678,gender:"Female",mobileno:9786698237))
detailsList.append(BankUser(userid:444,username:"Dishant chaudhary",password:456789,gender:"Male",mobileno:9086698237))
detailsList.append(Account(userid:111,username:"Miral Lakhani",password:123456,gender:"Female",mobileno:9586698237,accounttype:"Saving",balance:20000))
detailsList.append(Account(userid:222,username:"Manpreet Singh",password:123456,gender:"Male",mobileno:9986698237,accounttype:"Current",balance:80000))
detailsList.append(Account(userid:333,username:"Najmeh Akbari",password:345678,gender:"Female",mobileno:9786698237,accounttype:"Current",balance:35000))
detailsList.append(Account(userid:444,username:"Dishant chaudhary",password:456789,gender:"Male",mobileno:9086698237,accounttype:"Saving",balance:50000))

