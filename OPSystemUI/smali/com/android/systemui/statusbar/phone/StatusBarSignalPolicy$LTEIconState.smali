.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LTEIconState"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public imsIndex:I

.field public resId:I

.field public slot:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LTEIconState(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imsIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
