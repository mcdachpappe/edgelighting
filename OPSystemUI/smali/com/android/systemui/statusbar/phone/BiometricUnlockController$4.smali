.class Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;
.super Ljava/lang/Object;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$400(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$500(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    :cond_0
    return-void
.end method
