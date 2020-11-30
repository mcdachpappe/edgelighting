.class public Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;
.super Ljava/lang/Object;
.source "OpExpandButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;,
        Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;,
        Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;
    }
.end annotation


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mContext:Landroid/content/Context;

.field private mGameModeObserver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsShow:Z

.field private mOnExpandButtonListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;

.field private mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

.field private mView:Landroid/view/View;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->expand_button_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mButtonHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->expand_button_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mButtonWidth:I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mGameModeObserver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->initContentView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->isGameModeOn()Z

    move-result p0

    return p0
.end method

.method private isGameModeOn()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "game_mode_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private registerScreenReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$1;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeViewFromWindow()V
    .locals 2

    const-string v0, "ExpandButton"

    const-string v1, "removeViewFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mIsShow:Z

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mGameModeObserver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->register(Z)V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->unregisterScreenReceiver()V

    return-void
.end method

.method private unregisterScreenReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mScreenReceiver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$ScreenBroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method protected addViewToWindow(Landroid/view/View;)V
    .locals 11

    const-string v0, "ExpandButton"

    const-string v1, "addViewToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7e1

    const v6, 0x40308

    const/4 v7, -0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105020e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mButtonHeight:I

    sub-int/2addr v4, v5

    shr-int/2addr v4, v3

    add-int/2addr v5, v4

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mButtonWidth:I

    shr-int/lit8 v7, v6, 0x1

    sub-int/2addr v2, v7

    add-int/2addr v6, v2

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v4, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intersects:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", cutoutRect:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", buttonRect:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x12

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    add-int/2addr v4, v0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v0, Lcom/android/systemui/R$style;->ExpandButtonAnimation:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->registerScreenReceiver()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mIsShow:Z

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mIsShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->removeViewFromWindow()V

    :cond_0
    return-void
.end method

.method protected initContentView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->expand_button_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpExpandButton$wtuWa5xjXpcvYAsMTihrMD878fw;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpExpandButton$wtuWa5xjXpcvYAsMTihrMD878fw;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpExpandButton$wBMgk8xqv8utU1Ij5XJeWIhl0FQ;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpExpandButton$wBMgk8xqv8utU1Ij5XJeWIhl0FQ;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public isShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mIsShow:Z

    return p0
.end method

.method public synthetic lambda$initContentView$0$OpExpandButton(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mOnExpandButtonListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;->onExpandButtonClick()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initContentView$1$OpExpandButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mOnExpandButtonListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;->onOutSideClick(F)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setmOnExpandButtonListener(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mOnExpandButtonListener:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;

    return-void
.end method

.method public show()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mIsShow:Z

    const/16 v1, 0x3e8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->initContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mGameModeObserver:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$GameModeObserver;->register(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->addViewToWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
