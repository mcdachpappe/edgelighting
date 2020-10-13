.class public Lcom/oneplus/systemui/biometrics/OpQLRootView;
.super Landroid/widget/FrameLayout;
.source "OpQLRootView.java"


# instance fields
.field private TRACK_INTERVAL:I

.field private mHint:Landroid/widget/TextView;

.field private mIsCancel:Z

.field private mLabel:Landroid/widget/TextView;

.field private mQLCancelView:Landroid/view/View;

.field private mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

.field private mQLTrackView:Landroid/view/View;

.field private mQLTrackViewBackground:Landroid/view/View;

.field private mTrackViewPadding:I

.field private mTrackViewWidth:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->TRACK_INTERVAL:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mIsCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewPadding:I

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewWidth:I

    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onEnterCancelView()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mIsCancel:Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onEnterCancelView()V

    return-void
.end method

.method private onLeaveCancelView()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mIsCancel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mIsCancel:Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onLeaveCancelView()V

    return-void
.end method

.method private updateTrackBarVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->getItemCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x8ff

    const v4, 0x1000502

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "QuickLaunch"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x31

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    sget v0, Lcom/android/systemui/R$style;->Animation_QuickLaunch:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->icon_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    sget v0, Lcom/android/systemui/R$id;->cancel_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->track_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->track_view_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->updateTrackBarVisibility()V

    sget v0, Lcom/android/systemui/R$id;->label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->hint:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->setLabelView(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_quick_launch_track_view_padding_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x4b

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewPadding:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewWidth:I

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewWidth:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->TRACK_INTERVAL:I

    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onQLExit()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onQLExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iput-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {v4, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onVelocityChanged(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewPadding:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v5, v4, v3

    if-gez v5, :cond_4

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mTrackViewWidth:I

    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    int-to-float v3, v3

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->TRACK_INTERVAL:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onEnterCancelView()V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onLeaveCancelView()V

    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_8

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p0, v3}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onScrollProgress(F)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->launch()V

    :cond_9
    :goto_4
    return-void
.end method

.method public setQLConfig(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRootView;->mQLRecyclerView:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->setQLConfig(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->updateTrackBarVisibility()V

    return-void
.end method
