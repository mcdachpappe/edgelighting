.class Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field final synthetic val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->access$000()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->access$100()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->access$200()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;->mWasCancelled:Z

    return-void
.end method
