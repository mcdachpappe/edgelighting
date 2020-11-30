.class public abstract Lcom/oneplus/systemui/statusbar/phone/OpPanelView;
.super Landroid/widget/FrameLayout;
.source "OpPanelView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "OpPanelView"


# instance fields
.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field protected mTouchActionDownX:F

.field protected mTouchActionDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private showEmptyShadeView()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected checkRunPeekAnimation()Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->showEmptyShadeView()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public expand(Z)V
    .locals 0

    return-void
.end method

.method protected gameToolboxEnable()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "game_toolbox_enable"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method protected initExpandButton()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelView;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->setmOnExpandButtonListener(Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;)V

    :cond_0
    return-void
.end method

.method protected isDisableExpandForTouch()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "game_mode_prevent_mistouch"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method protected isWithinGameModeToolBoxRegion()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_port:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    sget-object v3, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toolboxRegionWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mTouchActionDownY:F

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_4

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mTouchActionDownX:F

    int-to-float v3, v2

    cmpg-float v3, p0, v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mTouchActionDownX:F

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mTouchActionDownY:F

    return-void
.end method

.method protected showExpandButton()V
    .locals 3

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable panel expandButton is show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->isShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->show()V

    return-void
.end method
