.class Lcom/android/systemui/stackdivider/DividerHandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;->animateToTarget(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerHandleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView$3;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$3;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$202(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
