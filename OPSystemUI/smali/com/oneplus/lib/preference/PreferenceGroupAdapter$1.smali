.class Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;->this$0:Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;->this$0:Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-static {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->access$100(Lcom/oneplus/lib/preference/PreferenceGroupAdapter;)V

    return-void
.end method
