.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$5;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$5;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
