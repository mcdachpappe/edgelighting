.class Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->access$000(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->access$100(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->access$300(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Interpolators;->HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->access$200(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
