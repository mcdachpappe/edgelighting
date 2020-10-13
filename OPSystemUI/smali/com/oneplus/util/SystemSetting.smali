.class public abstract Lcom/oneplus/util/SystemSetting;
.super Landroid/database/ContentObserver;
.source "SystemSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserOnly:Z

.field private mListening:Z

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oneplus/util/SystemSetting;->mCurrentUserOnly:Z

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/util/SystemSetting;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getValue(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/util/SystemSetting;->mCurrentUserOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, p0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/util/SystemSetting;->handleValueChanged(IZ)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/util/SystemSetting;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/util/SystemSetting;->mListening:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/util/SystemSetting;->mCurrentUserOnly:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/util/SystemSetting;->mCurrentUserOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, p0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/util/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
