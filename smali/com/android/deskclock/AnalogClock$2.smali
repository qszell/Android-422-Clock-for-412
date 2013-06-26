.class Lcom/android/deskclock/AnalogClock$2;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AnalogClock;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    #calls: Lcom/android/deskclock/AnalogClock;->onTimeChanged()V
    invoke-static {v0}, Lcom/android/deskclock/AnalogClock;->access$100(Lcom/android/deskclock/AnalogClock;)V

    .line 271
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v0}, Lcom/android/deskclock/AnalogClock;->invalidate()V

    .line 272
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    iget-object v1, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    #getter for: Lcom/android/deskclock/AnalogClock;->mClockTick:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/AnalogClock;->access$200(Lcom/android/deskclock/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/AnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method
