.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/AsyncSensorManager;

.field private final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field private final synthetic f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$0:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$M0vK92hy3xzJzHU8n6zHhFvx24s;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$unregisterPluginListener$6$AsyncSensorManager(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void
.end method
