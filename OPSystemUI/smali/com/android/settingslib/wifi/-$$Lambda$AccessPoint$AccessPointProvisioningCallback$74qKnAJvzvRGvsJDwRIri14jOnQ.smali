.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$74qKnAJvzvRGvsJDwRIri14jOnQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$74qKnAJvzvRGvsJDwRIri14jOnQ;->f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$AccessPointProvisioningCallback$74qKnAJvzvRGvsJDwRIri14jOnQ;->f$0:Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->lambda$onProvisioningFailure$0$AccessPoint$AccessPointProvisioningCallback()V

    return-void
.end method
