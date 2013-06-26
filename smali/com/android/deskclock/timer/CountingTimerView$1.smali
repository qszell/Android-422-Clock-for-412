.class Lcom/android/deskclock/timer/CountingTimerView$1;
.super Ljava/lang/Object;
.source "CountingTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVisible:Z

.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->mVisible:Z

    .line 80
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    iget-boolean v1, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->mVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$1;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    iget-object v1, v1, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/timer/CountingTimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
