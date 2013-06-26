.class public Lcom/android/deskclock/timer/TimerObj;
.super Ljava/lang/Object;
.source "TimerObj.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLabel:Ljava/lang/String;

.field public mOriginalLength:J

.field public mSetupLength:J

.field public mStartTime:J

.field public mState:I

.field public mTimeLeft:J

.field public mTimerId:I

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/deskclock/timer/TimerObj$1;

    invoke-direct {v0}, Lcom/android/deskclock/timer/TimerObj$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/timer/TimerObj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/timer/TimerObj;->init(J)V

    .line 168
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "timerLength"

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/TimerObj;->init(J)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "prefs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    const-string v3, "timers_list"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, timerStrings:[Ljava/lang/Object;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 215
    new-instance v1, Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {v1}, Lcom/android/deskclock/timer/TimerObj;-><init>()V

    .line 216
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    .line 217
    invoke-virtual {v1, p0}, Lcom/android/deskclock/timer/TimerObj;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 218
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    new-instance v3, Lcom/android/deskclock/timer/TimerObj$2;

    invoke-direct {v3}, Lcom/android/deskclock/timer/TimerObj$2;-><init>()V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "prefs"
    .parameter
    .parameter "match"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    const-string v3, "timers_list"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, timerStrings:[Ljava/lang/Object;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 235
    new-instance v1, Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {v1}, Lcom/android/deskclock/timer/TimerObj;-><init>()V

    .line 236
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    .line 237
    invoke-virtual {v1, p0}, Lcom/android/deskclock/timer/TimerObj;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 238
    iget v3, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v3, p2, :cond_0

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0           #i:I
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    return-void
.end method

.method private init(J)V
    .locals 2
    .parameter "length"

    .prologue
    .line 175
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    .line 176
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 177
    iput-wide p1, p0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iput-wide p1, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide p1, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "prefs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 250
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v0           #i:I
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    return-void
.end method

.method public static resetTimersInSharedPrefs(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-static {p0, v2}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 274
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    const/4 v3, 0x5

    iput v3, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 275
    iget-wide v3, v1, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iput-wide v3, v1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v3, v1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 276
    invoke-virtual {v1, p0}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 278
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 199
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    const-wide/32 v2, 0x249f000

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 200
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    .line 202
    :cond_0
    return-void
.end method

.method public deleteFromSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_id_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, key:Ljava/lang/String;
    iget v4, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, id:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_start_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_time_left_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_original_timet_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v4, "timers_list"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 131
    .local v3, timersList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    const-string v4, "timers_list"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_label_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getTimesupTime()J
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    iget-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isInUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 194
    iget v1, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTicking()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 190
    iget v1, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    iget v2, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_start_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_time_left_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_original_timet_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_setup_timet_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer_label_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public updateTimeLeft(Z)J
    .locals 6
    .parameter "forceUpdate"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerObj;->isTicking()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 184
    .local v0, millis:J
    iget-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 186
    .end local v0           #millis:J
    :cond_1
    iget-wide v2, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    return-wide v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 147
    iget v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget v0, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public writeToSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_id_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, key:Ljava/lang/String;
    iget v4, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, id:Ljava/lang/String;
    iget v4, p0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_start_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_time_left_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_original_timet_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_setup_timet_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget v4, p0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v4, "timers_list"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 93
    .local v3, timersList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v4, "timers_list"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer_label_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method
