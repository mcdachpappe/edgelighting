.class public abstract Lcom/oneplus/core/oimc/IOIMCService$Stub;
.super Landroid/os/Binder;
.source "IOIMCService.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/IOIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/oimc/IOIMCService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oneplus.core.oimc.IOIMCService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/core/oimc/IOIMCService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oneplus/core/oimc/IOIMCService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;
    .locals 1

    sget-object v0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCService;

    return-object v0
.end method
