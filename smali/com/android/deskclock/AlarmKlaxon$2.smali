.class Lcom/android/deskclock/AlarmKlaxon$2;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mInitialCallState:I
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$100(Lcom/android/deskclock/AlarmKlaxon;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/AlarmKlaxon;->access$200(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/deskclock/AlarmKlaxon;->sendKillBroadcast(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmKlaxon;->access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;Z)V

    .line 83
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$2;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    .line 85
    :cond_0
    return-void
.end method
