.class public Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "ContentLoadingProgressBar.java"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mStartTime:J

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    iput-boolean v0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    new-instance p1, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$1;

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$1;-><init>(Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    new-instance p1, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$2;

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar$2;-><init>(Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/oneplus/support/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method
