.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$1:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$nFm_Cwvlm4wHygAiG7lEhx9xLio;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateManagedProfile$0$PhoneStatusBarPolicy(ZI)V

    return-void
.end method
