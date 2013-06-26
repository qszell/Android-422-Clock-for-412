.class public Lcom/android/deskclock/stopwatch/Stopwatches;
.super Ljava/lang/Object;
.source "Stopwatches.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShareResults(Landroid/content/Context;J[J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "time"
    .parameter "laps"

    .prologue
    .line 70
    invoke-static {p1, p2}, Lcom/android/deskclock/stopwatch/Stopwatches;->getTimeText(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "time"
    .parameter "laps"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 57
    const v5, 0x7f0d005c

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, results:Ljava/lang/String;
    if-nez p2, :cond_0

    move v1, v4

    .line 59
    .local v1, lapsNum:I
    :goto_0
    if-nez v1, :cond_1

    move-object v3, v2

    .line 66
    .end local v2           #results:Ljava/lang/String;
    .local v3, results:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 58
    .end local v1           #lapsNum:I
    .end local v3           #results:Ljava/lang/String;
    .restart local v2       #results:Ljava/lang/String;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 62
    .restart local v1       #lapsNum:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d005d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-gt v0, v1, :cond_2

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d. %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    sub-int v8, v1, v0

    aget-wide v8, p2, v8

    invoke-static {v8, v9}, Lcom/android/deskclock/stopwatch/Stopwatches;->getTimeText(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 66
    .end local v2           #results:Ljava/lang/String;
    .restart local v3       #results:Ljava/lang/String;
    goto :goto_1
.end method

.method public static formatTimeText(JLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "time"
    .parameter "format"

    .prologue
    .line 114
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-gez v9, :cond_0

    .line 115
    const-wide/16 p0, 0x0

    .line 118
    :cond_0
    const-wide/16 v9, 0x3e8

    div-long v6, p0, v9

    .line 119
    .local v6, seconds:J
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v6

    sub-long v9, p0, v9

    const-wide/16 v11, 0xa

    div-long v2, v9, v11

    .line 120
    .local v2, hundreds:J
    const-wide/16 v9, 0x3c

    div-long v4, v6, v9

    .line 121
    .local v4, minutes:J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v4

    sub-long/2addr v6, v9

    .line 122
    const-wide/16 v9, 0x3c

    div-long v0, v4, v9

    .line 123
    .local v0, hours:J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v0

    sub-long/2addr v4, v9

    .line 124
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {p2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, timeStr:Ljava/lang/String;
    return-object v8
.end method

.method public static getShareTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, mLabels:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    array-length v3, v0

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getTimeText(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 78
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-gez v9, :cond_0

    .line 79
    const-wide/16 p0, 0x0

    .line 82
    :cond_0
    const-wide/16 v9, 0x3e8

    div-long v6, p0, v9

    .line 83
    .local v6, seconds:J
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v6

    sub-long v9, p0, v9

    const-wide/16 v11, 0xa

    div-long v2, v9, v11

    .line 84
    .local v2, hundreds:J
    const-wide/16 v9, 0x3c

    div-long v4, v6, v9

    .line 85
    .local v4, minutes:J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v4

    sub-long/2addr v6, v9

    .line 86
    const-wide/16 v9, 0x3c

    div-long v0, v4, v9

    .line 87
    .local v0, hours:J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v0

    sub-long/2addr v4, v9

    .line 88
    const-wide/16 v9, 0x63

    cmp-long v9, v0, v9

    if-lez v9, :cond_1

    .line 89
    const-wide/16 v0, 0x0

    .line 93
    :cond_1
    const-wide/16 v9, 0xa

    cmp-long v9, v0, v9

    if-ltz v9, :cond_2

    .line 94
    const-string v9, "%02dh %02dm %02ds .%02d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, timeStr:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 96
    .end local v8           #timeStr:Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    .line 97
    const-string v9, "%01dh %02dm %02ds .%02d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #timeStr:Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v8           #timeStr:Ljava/lang/String;
    :cond_3
    const-wide/16 v9, 0xa

    cmp-long v9, v4, v9

    if-ltz v9, :cond_4

    .line 100
    const-string v9, "%02dm %02ds .%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #timeStr:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v8           #timeStr:Ljava/lang/String;
    :cond_4
    const-string v9, "%02dm %02ds .%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #timeStr:Ljava/lang/String;
    goto :goto_0
.end method
