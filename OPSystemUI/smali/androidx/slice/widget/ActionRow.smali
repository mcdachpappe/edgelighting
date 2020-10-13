.class public Landroidx/slice/widget/ActionRow;
.super Landroid/widget/FrameLayout;
.source "ActionRow.java"


# instance fields
.field private final mActionsGroup:Landroid/widget/LinearLayout;

.field private mColor:I

.field private final mFullActions:Z

.field private final mIconPadding:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    iput-boolean p2, p0, Landroidx/slice/widget/ActionRow;->mFullActions:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Landroidx/slice/widget/ActionRow;->mIconPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x101030e

    invoke-static {p1, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/ActionRow;->addAction(Landroid/view/View;)V

    return-object v0
.end method

.method private addAction(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroidx/slice/widget/ActionRow;->mSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createRemoteInputView(ILandroid/content/Context;)V
    .locals 2

    invoke-static {p2, p0}, Landroidx/slice/widget/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroidx/slice/widget/RemoteInputView;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private findRemoteInputView(Landroid/view/View;)Landroidx/slice/widget/RemoteInputView;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/RemoteInputView;

    return-object p0
.end method

.method private handleSetRemoteInputActions(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no_tint"

    invoke-virtual {p2, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroidx/slice/widget/ActionRow$2;

    invoke-direct {v0, p0, p3, p1}, Landroidx/slice/widget/ActionRow$2;-><init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/ActionRow;->createRemoteInputView(ILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setColor(I)V
    .locals 3

    iput p1, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Landroidx/slice/widget/ActionRow;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method handleRemoteInputClick(Landroid/view/View;Landroidx/slice/SliceItem;Landroid/app/RemoteInput;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Landroidx/slice/widget/ActionRow;->findRemoteInputView(Landroid/view/View;)Landroidx/slice/widget/RemoteInputView;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    add-int v4, v1, p0

    sub-int/2addr v3, p0

    add-int v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p1, v1

    add-int v5, p1, p0

    add-int/2addr p1, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, v1, p0, p1}, Landroidx/slice/widget/RemoteInputView;->setRevealParameters(III)V

    invoke-virtual {v2, p2}, Landroidx/slice/widget/RemoteInputView;->setAction(Landroidx/slice/SliceItem;)V

    const/4 p0, 0x1

    new-array p1, p0, [Landroid/app/RemoteInput;

    aput-object p3, p1, v0

    invoke-virtual {v2, p1, p3}, Landroidx/slice/widget/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView;->focusAnimated()V

    return p0
.end method

.method public setActions(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p2}, Landroidx/slice/widget/ActionRow;->setColor(I)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/core/SliceAction;

    iget-object v1, p0, Landroidx/slice/widget/ActionRow;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    return-void

    :cond_2
    move-object v1, p2

    check-cast v1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    const-string v3, "input"

    invoke-static {v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    const-string v4, "image"

    invoke-static {v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_3

    invoke-direct {p0, v3, v2, v1}, Landroidx/slice/widget/ActionRow;->handleSetRemoteInputActions(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received RemoteInput on API <20 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActionRow"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getImageMode()I

    move-result p2

    if-nez p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-direct {p0, v2, v0}, Landroidx/slice/widget/ActionRow;->addAction(Landroidx/core/graphics/drawable/IconCompat;Z)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroidx/slice/widget/ActionRow$1;

    invoke-direct {v0, p0, v1}, Landroidx/slice/widget/ActionRow$1;-><init>(Landroidx/slice/widget/ActionRow;Landroidx/slice/SliceItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
