.class Lcom/android/keyguard/clock/SmallClockPosition;
.super Ljava/lang/Object;
.source "SmallClockPosition.java"


# instance fields
.field private final mBurnInOffsetY:I

.field private mDarkAmount:F

.field private final mKeyguardLockHeight:I

.field private final mKeyguardLockPadding:I

.field private final mStatusBarHeight:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    iput p2, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    iput p3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    iput p4, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    sget v0, Lcom/android/keyguard/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lock_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lock_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/keyguard/R$dimen;->burn_in_prevention_offset_y:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method getPreferredY()I
    .locals 4

    iget v0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    iget v1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    add-int/2addr v0, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v2

    iget p0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method setDarkAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    return-void
.end method
