.class Lcom/android/deskclock/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/deskclock/DigitalClock;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/deskclock/DigitalClock;

    #calls: Lcom/android/deskclock/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/deskclock/DigitalClock;->access$400(Lcom/android/deskclock/DigitalClock;)V

    .line 107
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/deskclock/DigitalClock;

    #calls: Lcom/android/deskclock/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/deskclock/DigitalClock;->access$200(Lcom/android/deskclock/DigitalClock;)V

    .line 108
    return-void
.end method
