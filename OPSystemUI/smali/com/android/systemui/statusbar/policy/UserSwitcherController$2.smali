.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Ljava/lang/Thread;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "UserSwitcherController"

    const-string v1, "switchTo:createGuest:START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->guest_nickname:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v2, "switchTo:createGuest:END"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    return-void
.end method
