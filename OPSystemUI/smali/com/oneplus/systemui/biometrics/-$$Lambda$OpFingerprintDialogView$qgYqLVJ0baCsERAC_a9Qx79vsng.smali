.class public final synthetic Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;->f$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iput p2, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;->f$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget p0, p0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;->f$1:I

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->lambda$setDisplayPressMode$2$OpFingerprintDialogView(I)V

    return-void
.end method
