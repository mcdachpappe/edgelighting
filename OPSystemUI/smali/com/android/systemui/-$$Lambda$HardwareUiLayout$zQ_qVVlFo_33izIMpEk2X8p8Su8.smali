.class public final synthetic Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/HardwareUiLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;->f$0:Lcom/android/systemui/HardwareUiLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;->f$0:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->lambda$onMeasure$1$HardwareUiLayout()V

    return-void
.end method
