.class public Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;
.super Ljava/lang/Object;
.source "OpQLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionInfo"
.end annotation


# instance fields
.field mActionName:Ljava/lang/String;

.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mLabel:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPaymentWhich:I

.field mQuickPayConfig:Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

.field mShortcutIcon:I

.field mShortcutId:Ljava/lang/String;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setShortcutId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ShortcutId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
