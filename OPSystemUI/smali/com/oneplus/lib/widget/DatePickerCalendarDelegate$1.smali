.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Lcom/oneplus/lib/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object p1, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V

    return-void
.end method
