.class public Lcom/oneplus/lib/menu/StandardMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    new-instance v0, Lcom/oneplus/lib/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/StandardMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/oneplus/lib/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/StandardMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iput-boolean p6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    new-instance v0, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v0, p2, p6, v1}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    iput p4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iput p5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lcom/oneplus/commonctrl/R$dimen;->op_abc_config_prefDialogWidth:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupMaxWidth:I

    iput-object p3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    new-instance p3, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object p4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget p5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget p6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private tryShow()Z
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setModal(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v0, v3, v4, v5}, Lcom/oneplus/lib/menu/MenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContentWidth:I

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getEpicenterBounds()Landroid/graphics/Rect;
    .locals 0

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getId()I
    .locals 0

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getId()I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->dismiss()V

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mWasDismissed:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->close()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupHelper;

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZII)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    invoke-static {p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    iget v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setGravity(I)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/lib/menu/MenuPopupHelper;->tryShow(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    :cond_0
    return v4

    :cond_1
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mPopup:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/menu/StandardMenuPopup;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mHasContentWidth:Z

    iget-object p0, p0, Lcom/oneplus/lib/menu/StandardMenuPopup;->mAdapter:Lcom/oneplus/lib/menu/MenuAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
