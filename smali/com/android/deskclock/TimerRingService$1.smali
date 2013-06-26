.class Lcom/android/deskclock/TimerRingService$1;
.super Landroid/telephony/PhoneStateListener;
.source "TimerRingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimerRingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/TimerRingService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/TimerRingService;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/deskclock/TimerRingService$1;->this$0:Lcom/android/deskclock/TimerRingService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "ignored"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/TimerRingService$1;->this$0:Lcom/android/deskclock/TimerRingService;

    #getter for: Lcom/android/deskclock/TimerRingService;->mInitialCallState:I
    invoke-static {v0}, Lcom/android/deskclock/TimerRingService;->access$000(Lcom/android/deskclock/TimerRingService;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService$1;->this$0:Lcom/android/deskclock/TimerRingService;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerRingService;->stopSelf()V

    .line 55
    :cond_0
    return-void
.end method
