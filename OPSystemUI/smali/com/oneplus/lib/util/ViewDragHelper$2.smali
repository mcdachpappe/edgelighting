.class Lcom/oneplus/lib/util/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/util/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/ViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper$2;->this$0:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper$2;->this$0:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    return-void
.end method
