.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Landroid/hardware/Sensor;

.field private final synthetic f$2:Landroid/hardware/SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$1:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$2:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$1:Landroid/hardware/Sensor;

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$_FJ7HnXlU155n13C8v2xB8y9Vy0;->f$2:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$unregisterListenerImpl$8$AsyncSensorManager(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    return-void
.end method
