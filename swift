import UIKit

class AnimationViewController: UIViewController {
    var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create and configure the view to animate
        animationView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        animationView.backgroundColor = .red
        animationView.center = view.center
        view.addSubview(animationView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Start the animation
        startAnimation()
    }
    
    func startAnimation() {
        UIView.animate(withDuration: 30.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.animationView.transform = CGAffineTransform(rotationAngle: .pi)
        }, completion: nil)
    }
}

// Create and present the view controller
let viewController = AnimationViewController()
// Present the view controller using your preferred method (e.g., push, present, etc.)
// Your code for presenting the view controller goes here
