
import UIKit
protocol ViewModelProtocol: AnyObject{
    func dataPass()
}

class UserViewModel {
    
    var user1 : Users?
    weak var delegateP : ViewModelProtocol?
private let str = "https://jsonplaceholder.typicode.com/users"
    init(view : ViewModelProtocol)
    {
        self.delegateP = view
        config()
    }
    func config(){
        let service = Service()
     
        service.apiData3(apistring: str, resultType: Users.self) { result in
            self.user1 = result
            self.delegateP?.dataPass()
        }
            }
}
