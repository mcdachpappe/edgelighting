.class public Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.super Lcom/oneplus/lib/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/HeaderBehavior<",
        "Lcom/oneplus/lib/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v3, p2

    if-gt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p0, v6, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p0, v6, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    :cond_0
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v1, p1

    :cond_1
    if-lez v1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p1, v1

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-interface {v5, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, p0

    mul-int/2addr p1, p2

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 3

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    instance-of v2, v1, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getOverlayTop()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x11

    const/16 v5, 0x11

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v5, v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v3, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v5, v2

    :cond_3
    :goto_0
    add-int v2, v5, v4

    div-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 2

    invoke-static {p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result p3

    const/4 v0, 0x1

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-gez p4, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xb

    if-lt p3, p4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_1
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result p0

    return p0
.end method

.method canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p0

    return p0
.end method

.method getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 0

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p0

    return p0
.end method

.method getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 0

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 0

    invoke-super {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p0

    return p0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, p0

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method bridge synthetic onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z

    move-result p0

    return p0
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, v1, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz p1, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->resetPendingAction()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z

    move-result p0

    return p0
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z
    .locals 6

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 6

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p6, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int v3, p3

    const/4 v4, 0x0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    cmpg-float p6, p5, p6

    if-gez p6, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p6

    neg-int p6, p6

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int/2addr p6, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, p6, :cond_2

    invoke-direct {p0, p1, p2, p6, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p6

    neg-int p6, p6

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-le v0, p6, :cond_2

    invoke-direct {p0, p1, p2, p6, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_0

    :cond_2
    move p3, p4

    :goto_0
    iput-boolean p3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    return p3
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 6

    if-eqz p5, :cond_1

    iget-boolean p3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez p3, :cond_1

    if-gez p5, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result p4

    add-int/2addr p4, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p3

    neg-int p3, p3

    const/4 p4, 0x0

    :goto_0
    move v4, p3

    move v5, p4

    const/4 p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    aput p0, p6, p3

    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 6

    if-gez p7, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-virtual {p3}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget p1, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    iget p1, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    iget-boolean p1, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p0

    if-gtz v5, :cond_1

    if-ltz v4, :cond_1

    new-instance p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v4, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    if-eq v0, p3, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    invoke-virtual {p0, p4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result p5

    sub-int v1, v0, p3

    sub-int p4, p3, p4

    iput p4, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    if-nez p5, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge p3, v0, :cond_2

    const/4 p4, -0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    :cond_4
    :goto_2
    return v1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p0

    return p0
.end method
