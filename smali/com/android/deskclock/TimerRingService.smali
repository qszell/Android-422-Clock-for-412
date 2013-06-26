.class public Lcom/android/deskclock/TimerRingService;
.super Landroid/app/Service;
.source "TimerRingService.java"


# instance fields
.field private mInitialCallState:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaying:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    .line 44
    new-instance v0, Lcom/android/deskclock/TimerRingService$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/TimerRingService$1;-><init>(Lcom/android/deskclock/TimerRingService;)V

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/TimerRingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/deskclock/TimerRingService;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/TimerRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private play()V
    .locals 9

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/deskclock/TimerRingService$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/TimerRingService$2;-><init>(Lcom/android/deskclock/TimerRingService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "Using the in-call alarm"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3e00

    const/high16 v2, 0x3e00

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 131
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v2, 0x7f070001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/TimerRingService;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerRingService;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "sounds/Timer_Expire.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 135
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 139
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 140
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "Using the fallback ringtone"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 145
    :try_start_2
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 146
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x7f07

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/TimerRingService;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerRingService;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 149
    :catch_1
    move-exception v8

    .line 151
    .local v8, ex2:Ljava/lang/Exception;
    const-string v0, "Failed to play fallback ringtone"

    invoke-static {v0, v8}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 176
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 179
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 181
    :cond_0
    return-void
.end method

.method private startAlarm(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "player"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 162
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/deskclock/TimerRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 165
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 168
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 169
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/TimerRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 65
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireScreenCpuWakeLock(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->stop()V

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/TimerRingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 73
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/deskclock/TimerRingService;->stopSelf()V

    .line 86
    const/4 v0, 0x2

    .line 94
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/TimerRingService;->play()V

    .line 92
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/TimerRingService;->mInitialCallState:I

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/TimerRingService;->mPlaying:Z

    .line 192
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 194
    iget-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/TimerRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 198
    :cond_0
    return-void
.end method
