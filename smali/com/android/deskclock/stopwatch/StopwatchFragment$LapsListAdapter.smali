.class Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LapsListAdapter"
.end annotation


# instance fields
.field private final mBackgroundColor:I

.field private final mFormats:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLapFormat:Ljava/lang/String;

.field private final mLapFormatSet:[Ljava/lang/String;

.field private mLapIndex:I

.field mLaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;",
            ">;"
        }
    .end annotation
.end field

.field private final mThresholds:[J

.field private mTotalIndex:I

.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    .line 93
    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 94
    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    invoke-virtual {p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mBackgroundColor:I

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormatSet:[Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 103
    return-void

    .line 86
    :array_0
    .array-data 0x8
        0xc0t 0x27t 0x9t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x51t 0x25t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2at 0x75t 0x15t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa4t 0x93t 0xd6t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$800(Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    return-void
.end method

.method private resetTimeFormats()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 154
    return-void
.end method

.method private updateLapFormat()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormatSet:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormat:Ljava/lang/String;

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public clearLaps()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 178
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->resetTimeFormats()V

    .line 179
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLapTimes()[J
    .locals 5

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 185
    .local v2, size:I
    if-nez v2, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 192
    :cond_0
    return-object v1

    .line 188
    :cond_1
    new-array v1, v2, [J

    .line 189
    .local v1, laps:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v3, v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    aput-wide v3, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 112
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    .line 116
    :cond_1
    if-eqz p2, :cond_2

    .line 117
    move-object v1, p2

    .line 121
    .local v1, lapInfo:Landroid/view/View;
    :goto_1
    const v4, 0x7f0e0047

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, count:Landroid/widget/TextView;
    const v4, 0x7f0e0048

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, lapTime:Landroid/widget/TextView;
    const v4, 0x7f0e0049

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, toalTime:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    iget v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/deskclock/stopwatch/Stopwatches;->formatTimeText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    iget v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/deskclock/stopwatch/Stopwatches;->formatTimeText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormat:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mBackgroundColor:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 119
    .end local v0           #count:Landroid/widget/TextView;
    .end local v1           #lapInfo:Landroid/view/View;
    .end local v2           #lapTime:Landroid/widget/TextView;
    .end local v3           #toalTime:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1       #lapInfo:Landroid/view/View;
    goto :goto_1
.end method

.method public setLapTimes([J)V
    .locals 11
    .parameter "laps"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    array-length v7, p1

    .line 202
    .local v7, size:I
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 204
    iget-object v10, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    aget-wide v2, p1, v6

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 206
    :cond_2
    const-wide/16 v8, 0x0

    .line 207
    .local v8, totalTime:J
    add-int/lit8 v6, v7, -0x1

    :goto_2
    if-ltz v6, :cond_3

    .line 208
    aget-wide v0, p1, v6

    add-long/2addr v8, v0

    .line 209
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iput-wide v8, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z

    .line 207
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 212
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 213
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z
    .locals 5
    .parameter "lap"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, formatChanged:Z
    :goto_0
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-wide v1, p1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 159
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-wide v1, p1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 164
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    .line 165
    const/4 v0, 0x1

    goto :goto_1

    .line 167
    :cond_1
    return v0
.end method
