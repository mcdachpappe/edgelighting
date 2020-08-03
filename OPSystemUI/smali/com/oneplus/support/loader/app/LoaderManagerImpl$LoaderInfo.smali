.class public Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
.super Lcom/oneplus/support/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/lifecycle/MutableLiveData<",
        "TD;>;",
        "Lcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mId:I

.field private mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

.field private final mLoader:Lcom/oneplus/support/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Lcom/oneplus/support/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method destroy(Z)Lcom/oneplus/support/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    sget-boolean p1, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Destroying: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoaderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {p0}, Lcom/oneplus/support/loader/content/Loader;->cancelLoad()Z

    const/4 p0, 0x0

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/support/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method markForRedelivery()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Lcom/oneplus/support/lifecycle/LiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/lifecycle/LiveData;->observe(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {p0}, Lcom/oneplus/support/loader/content/Loader;->startLoading()V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onInactive()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {p0}, Lcom/oneplus/support/loader/content/Loader;->stopLoading()V

    const/4 p0, 0x0

    throw p0
.end method

.method public removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/oneplus/support/loader/content/Loader;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/loader/content/Loader;->reset()V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
