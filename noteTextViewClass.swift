import Cocoa

class noteTextViewClass: NSTextField {
    var onFocusChange: (Bool) -> Void = { _ in }

    override func becomeFirstResponder() -> Bool {
        let textView = window?.fieldEditor(true, for: nil) as? NSTextView
        print("focus changed")
        onFocusChange(true)
        return super.becomeFirstResponder()
    }
}

func controlTextDidEndEditing(_ obj: Notification) {
  
    print("noteTextViewClass: end edit")
}

func textDidBeginEditing(_ notification: Notification) {
    print("noteTextViewClass: aa")
}

func textDidChange(_ notification: Notification) {
    print("noteTextViewClass: bb")
}

func textDidEndEditing(_ notification: Notification) {
    print("noteTextViewClass: cc")
}
