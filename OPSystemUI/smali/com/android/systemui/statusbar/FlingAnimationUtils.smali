.class public Lcom/android/systemui/statusbar/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

.field private mCachedStartGradient:F

.field private mCachedVelocityFactor:F

.field private mHighVelocityPxPerSecond:F

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mLinearOutSlowInX2:F

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F

.field private final mSpeedUpFactor:F

.field private final mY2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 p2, 0x0

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    const p2, 0x3eb33333    # 0.35f

    const p3, 0x3f2e147b    # 0.68f

    iget p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    invoke-static {p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    :goto_0
    iput p5, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    const/high16 p2, 0x437a0000    # 250.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    const p2, 0x453b8000    # 3000.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    sub-float/2addr p0, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p0, p1

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method private getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v1, p4, v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    mul-float/2addr v1, p2

    div-float p4, v1, p3

    cmpg-float v0, p4, p1

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v2, p1, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move p1, p4

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    new-instance p4, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object p3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p4, v2, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object p2, p3, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    return-object p0
.end method

.method private getInterpolator(FF)Landroid/view/animation/Interpolator;
    .locals 5

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "FlingAnimationUtils"

    const-string p2, "Invalid velocity factor"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float v1, v0, p1

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    :try_start_0
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal path with x1="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y1="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " x2="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y2="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const p4, 0x453b8000    # 3000.0f

    div-float p4, p3, p4

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    const/high16 p4, 0x3f400000    # 0.75f

    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    div-float/2addr v1, v2

    invoke-static {p4, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p4

    mul-float v1, p4, p2

    div-float/2addr v1, p3

    invoke-direct {p0, p4, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object p4

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object p4, p1, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move p1, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object p3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p2, v0, p4, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object p2, p3, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .locals 7

    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object p0

    iget-wide p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object p0

    iget-wide p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    return p0
.end method
