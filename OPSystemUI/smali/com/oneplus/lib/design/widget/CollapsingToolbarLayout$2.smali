.class Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method
