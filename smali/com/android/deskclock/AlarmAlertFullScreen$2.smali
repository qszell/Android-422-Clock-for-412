.class Lcom/android/deskclock/AlarmAlertFullScreen$2;
.super Landroid/os/Handler;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$2;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen$2;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
