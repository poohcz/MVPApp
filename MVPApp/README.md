#  읽어줘

1. 다른 스토리보드로 화면전환 할 경우에는 스토리보드를 다시 불러와 줘야한다(인스턴스생성)... 30분 삽질... 알고 있었잖아... ㅠㅠ

let storyboard = UIStoryboard(name: "새로운 스토리보드 이름", bundle: nil)

guard let secondViewController = storyboard.instantiateViewController(withIdentifier: "RankingViewController") as? RankingViewController else { return }
        // 화면 전환 애니메이션 설정
        secondViewController.modalTransitionStyle = .coverVertical
        // 전환된 화면이 보여지는 방법 설정 (fullScreen)
        secondViewController.modalPresentationStyle = .fullScreen
        self.present(secondViewController, animated: true, completion: nil)

