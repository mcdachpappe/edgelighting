.class Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;
.super Ljava/lang/Object;
.source "OpKeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    iget-object p1, p1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-virtual {p1, v0, v0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->resetPasswordText(ZZ)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    return v0
.end method
