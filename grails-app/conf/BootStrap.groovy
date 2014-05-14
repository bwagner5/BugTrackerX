import com.btx.Client
import com.btx.Product
import com.btx.Severity


class BootStrap {

    def init = { servletContext ->
    
    	Client client = new Client(name: "First Energy Nuclear Operating Company").save()
        Client client2 = new Client(name: "Triple Tech, Inc.").save()
        Client client3 = new Client(name: "United States Department of Agriculture").save()
        Client client4 = new Client(name: "Nebraska Public Power District").save()

        
        Product product = new Product(name: "Fire Protection Expert : Davis-Besse", description: "Davis-Besse's Version of Triple Tech's Fire Protection Expert software.", client: client).save()
        Product product2 = new Product(name: "Fire Protection Expert : Perry", description: "Perry's Version of Triple Tech's Fire Protection Expert software.", client: client).save()
        Product product3 = new Product(name: "Fire Protection Expert : Beaver Valley Unit 1", description: "Beaver Valley Unit 1's Version of Triple Tech's Fire Protection Expert software.", client: client).save()
        Product product4 = new Product(name: "Fire Protection Expert : Beaver Valley Unit 2", description: "Beaver Valley Unit 2's Version of Triple Tech's Fire Protection Expert software.", client: client).save()
        Product product5 = new Product(name: "Bug Tracker X", description: "Bug Tracker X is a web application to easily and quickly track and resolve bugs. Bug Tracker X gives the client the ability to report bugs and be notified when they have been resolved.", client: client2).save()

        Severity info = new Severity(name: "Informational", level: 0).save()
        Severity minor = new Severity(name: "Minor", level: 1).save()
        Severity moderate = new Severity(name: "Moderate", level: 2).save()
        Severity major= new Severity(name: "Major", level: 3).save()
        Severity critical = new Severity(name: "Critical", level: 4).save()

    }
    def destroy = {
    }
}
