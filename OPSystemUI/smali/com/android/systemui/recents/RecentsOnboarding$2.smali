.class Lcom/android/systemui/recents/RecentsOnboarding$2;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverviewShown(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1100(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1200(Lcom/android/systemui/recents/RecentsOnboarding;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1300(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1008(Lcom/android/systemui/recents/RecentsOnboarding;)I

    :cond_2
    return-void
.end method
