.class Lcom/android/deskclock/TimerRingService$2;
.super Ljava/lang/Object;
.source "TimerRingService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/TimerRingService;->play()V
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
    .line 113
    iput-object p1, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 116
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 118
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService$2;->this$0:Lcom/android/deskclock/TimerRingService;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/deskclock/TimerRingService;->access$102(Lcom/android/deskclock/TimerRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 120
    const/4 v0, 0x1

    return v0
.end method
