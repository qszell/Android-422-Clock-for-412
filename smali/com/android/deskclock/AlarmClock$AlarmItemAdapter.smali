.class public Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final DAY_ORDER:[I

.field private final mBackgroundColor:I

.field private final mBackgroundColorSelected:I

.field private final mColorDim:I

.field private final mColorLit:I

.field private final mContext:Landroid/content/Context;

.field private final mExpanded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mHasVibrator:Z

.field private final mList:Landroid/widget/ListView;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLongWeekDayStrings:[Ljava/lang/String;

.field private mPreviousDaysOfWeekMap:Landroid/os/Bundle;

.field private final mRepeatChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRobotoBold:Landroid/graphics/Typeface;

.field private final mRobotoNormal:Landroid/graphics/Typeface;

.field private mScrollAlarmId:I

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSelectedAlarms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortWeekDayStrings:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;[I[I[ILandroid/os/Bundle;Landroid/widget/ListView;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "expandedIds"
    .parameter "repeatCheckedIds"
    .parameter "selectedAlarms"
    .parameter "previousDaysOfWeekMap"
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 504
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    .line 505
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 445
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    .line 446
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    .line 447
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    .line 448
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 453
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    .line 488
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    .line 489
    new-instance v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    .line 506
    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    .line 507
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 508
    iput-object p7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    .line 510
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 511
    .local v0, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    .line 512
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 515
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    .line 516
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    .line 517
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColorSelected:I

    .line 518
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColor:I

    .line 521
    const-string v2, "sans-serif-condensed"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    .line 522
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    .line 524
    if-eqz p3, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-direct {p0, p3, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 527
    :cond_0
    if-eqz p4, :cond_1

    .line 528
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-direct {p0, p4, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 530
    :cond_1
    if-eqz p6, :cond_2

    .line 531
    iput-object p6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 533
    :cond_2
    if-eqz p5, :cond_3

    .line 534
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-direct {p0, p5, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->buildHashSetFromArray([ILjava/util/HashSet;)V

    .line 537
    :cond_3
    const-string v2, "vibrator"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mHasVibrator:Z

    .line 539
    return-void

    .line 453
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    iput p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
    .locals 7
    .parameter "itemHolder"
    .parameter "alarm"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 751
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 752
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    :goto_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$8;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 770
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    iget v4, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget-object v3, v3, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 771
    :cond_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 772
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 778
    :goto_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 819
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {p0, p1, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 820
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 821
    move v0, v1

    .line 823
    .local v0, buttonIndex:I
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;ILcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 755
    .end local v0           #buttonIndex:I
    .end local v1           #i:I
    :cond_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    const v4, 0x7f0d000e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 756
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 776
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 855
    .restart local v1       #i:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mHasVibrator:Z

    if-nez v3, :cond_4

    .line 856
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 869
    :goto_3
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$11;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$12;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 902
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 903
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, ringtone:Ljava/lang/String;
    :goto_4
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$13;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$13;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 922
    return-void

    .line 858
    .end local v2           #ringtone:Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 859
    iget-boolean v3, p2, Lcom/android/deskclock/Alarm;->vibrate:Z

    if-nez v3, :cond_5

    .line 860
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 861
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 866
    :goto_5
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    .line 863
    :cond_5
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 864
    iget-object v3, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_5

    .line 905
    :cond_6
    iget-object v3, p2, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ringtone:Ljava/lang/String;
    goto :goto_4
.end method

.method private buildHashSetFromArray([ILjava/util/HashSet;)V
    .locals 5
    .parameter "ids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1107
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method private collapseAlarm(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget v1, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1051
    return-void
.end method

.method private doLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClock;->access$2600(Lcom/android/deskclock/AlarmClock;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 959
    :goto_0
    return v0

    .line 953
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 954
    if-eqz p1, :cond_1

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->toggleSelectState(Landroid/view/View;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->notifyDataSetChanged()V

    .line 957
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #calls: Lcom/android/deskclock/AlarmClock;->updateActionMode()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmClock;->access$100(Lcom/android/deskclock/AlarmClock;)V

    .line 959
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V
    .locals 2
    .parameter "itemHolder"

    .prologue
    .line 1029
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    new-instance v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$14;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$14;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V

    .line 1042
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I

    .line 1043
    return-void
.end method

.method private getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$2700(Lcom/android/deskclock/AlarmClock;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, title:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1011
    .local v0, ringTone:Landroid/media/Ringtone;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    if-eqz v1, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mRingtoneTitleCache:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$2700(Lcom/android/deskclock/AlarmClock;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .end local v0           #ringTone:Landroid/media/Ringtone;
    :cond_0
    return-object v1
.end method

.method private getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "v"

    .prologue
    .line 976
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0012

    if-eq v0, v1, :cond_0

    .line 977
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .restart local p1
    goto :goto_0

    .line 979
    :cond_0
    return-object p1
.end method

.method private getViewById(I)Landroid/view/View;
    .locals 4
    .parameter "id"

    .prologue
    .line 1059
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1060
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1061
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1062
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    move-object v0, v3

    check-cast v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    .line 1063
    .local v0, h:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    if-ne v3, p1, :cond_0

    .line 1068
    .end local v0           #h:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 1059
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z
    .locals 2
    .parameter "alarm"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget v1, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V
    .locals 2
    .parameter "holder"
    .parameter "enabled"

    .prologue
    .line 927
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f80

    .line 928
    .local v0, alpha:F
    :goto_0
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/DigitalClock;->setAlpha(F)V

    .line 929
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 930
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 931
    iget-object v1, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 932
    return-void

    .line 927
    .end local v0           #alpha:F
    :cond_0
    const/high16 v0, 0x3f00

    goto :goto_0
.end method

.method private turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .parameter "holder"
    .parameter "dayIndex"

    .prologue
    .line 987
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 988
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 989
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 990
    return-void
.end method

.method private turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .parameter "holder"
    .parameter "dayIndex"

    .prologue
    .line 993
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 994
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 995
    iget-object v0, p1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 996
    return-void
.end method

.method private updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 3
    .parameter "holder"
    .parameter "daysOfWeek"

    .prologue
    .line 935
    invoke-virtual {p2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getSetDays()Ljava/util/HashSet;

    move-result-object v1

    .line 936
    .local v1, setDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 938
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    .line 936
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    goto :goto_1

    .line 943
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 618
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 619
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    .line 620
    .local v3, itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    iput-object v0, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    .line 624
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 625
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-boolean v8, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 626
    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v8, v8, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 627
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColorSelected:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 628
    invoke-direct {p0, v3, v10}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    .line 629
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 635
    :goto_0
    new-instance v4, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$2;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    .line 652
    .local v4, onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 653
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 655
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    iget v8, v0, Lcom/android/deskclock/Alarm;->hour:I

    iget v9, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v5, v8, v9}, Lcom/android/deskclock/DigitalClock;->updateTime(II)V

    .line 656
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v5, v10}, Lcom/android/deskclock/DigitalClock;->setClickable(Z)V

    .line 657
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$3;

    invoke-direct {v8, p0, v0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$3;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/Alarm;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Lcom/android/deskclock/DigitalClock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Lcom/android/deskclock/DigitalClock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 671
    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 673
    iget-object v8, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$4;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$4;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 687
    const-string v1, ""

    .line 689
    .local v1, colons:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v5, v8, v6}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, daysOfWeekStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 691
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v9, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v8, v9}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    const-string v1, ": "

    .line 696
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$5;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$5;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 713
    :goto_3
    iget-object v5, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 714
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v6, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;

    invoke-direct {v6, p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$6;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 735
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;)V

    .line 738
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 739
    new-instance v5, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;

    invoke-direct {v5, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    return-void

    .line 631
    .end local v1           #colons:Ljava/lang/String;
    .end local v2           #daysOfWeekStr:Ljava/lang/String;
    .end local v4           #onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_1
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 632
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mBackgroundColor:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 633
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Z)V

    goto/16 :goto_0

    .restart local v4       #onOffListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_2
    move v5, v7

    .line 671
    goto/16 :goto_1

    :cond_3
    move v5, v7

    .line 673
    goto/16 :goto_2

    .line 710
    .restart local v1       #colons:Ljava/lang/String;
    .restart local v2       #daysOfWeekStr:Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 732
    :cond_5
    iget-object v5, v3, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public clearSelectedAlarms()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1124
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->notifyDataSetChanged()V

    .line 1125
    return-void
.end method

.method public deleteSelectedAlarms()V
    .locals 5

    .prologue
    .line 1112
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Integer;

    .line 1113
    .local v2, ids:[Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1114
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1115
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    .end local v1           #id:I
    :cond_0
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncDeleteAlarm([Ljava/lang/Integer;)V
    invoke-static {v4, v2}, Lcom/android/deskclock/AlarmClock;->access$2800(Lcom/android/deskclock/AlarmClock;[Ljava/lang/Integer;)V

    .line 1119
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->clearSelectedAlarms()V

    .line 1120
    return-void
.end method

.method public getExpandedArray()[I
    .locals 5

    .prologue
    .line 1072
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1073
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1074
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1075
    .local v1, id:I
    aput v1, v2, v3

    .line 1076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1078
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getPreviousDaysOfWeekMap()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRepeatArray()[I
    .locals 5

    .prologue
    .line 1092
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1093
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1094
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1095
    .local v1, id:I
    aput v1, v2, v3

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1098
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getSelectedAlarmsArray()[I
    .locals 5

    .prologue
    .line 1082
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 1083
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 1084
    .local v3, index:I
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1085
    .local v1, id:I
    aput v1, v2, v3

    .line 1086
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1088
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getSelectedItemsNum()I
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    .line 558
    :cond_0
    if-nez p2, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, v:Landroid/view/View;
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 563
    .end local v0           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_1

    .line 567
    .end local v0           #v:Landroid/view/View;
    :cond_3
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 576
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v7, 0x7f040005

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, view:Landroid/view/View;
    new-instance v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;-><init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V

    .line 580
    .local v2, holder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
    const v6, 0x7f0e0012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    .line 581
    const v6, 0x7f0e0013

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/DigitalClock;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    .line 582
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v6, v9}, Lcom/android/deskclock/DigitalClock;->setLive(Z)V

    .line 583
    const v6, 0x7f0e0014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    .line 584
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTypeface(Landroid/graphics/Typeface;)V

    .line 585
    const v6, 0x7f0e0017

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    .line 586
    const v6, 0x7f0e0011

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    .line 587
    const v6, 0x7f0e0019

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    .line 588
    const v6, 0x7f0e0016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->infoArea:Landroid/view/View;

    .line 589
    const v6, 0x7f0e001b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    .line 590
    const v6, 0x7f0e001a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    .line 591
    const v6, 0x7f0e0015

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    .line 592
    const v6, 0x7f0e001c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    .line 595
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v6, 0x7

    if-ge v3, v6, :cond_0

    .line 596
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v7, 0x7f04000e

    iget-object v8, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 598
    .local v5, viewgroup:Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 599
    .local v0, button:Landroid/widget/ToggleButton;
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I

    aget v1, v6, v3

    .line 600
    .local v1, dayToShowIndex:I
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aput-object v0, v6, v3

    .line 606
    iget-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aput-object v5, v6, v3

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v0           #button:Landroid/widget/ToggleButton;
    .end local v1           #dayToShowIndex:I
    .end local v5           #viewgroup:Landroid/view/ViewGroup;
    :cond_0
    const v6, 0x7f0e001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    .line 609
    const v6, 0x7f0e001f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->collapse:Landroid/view/ViewGroup;

    .line 610
    const v6, 0x7f0e001d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    .line 612
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 613
    return-object v4
.end method

.method public removeSelectedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 547
    return-void
.end method

.method public setNewAlarm(I)V
    .locals 2
    .parameter "alarmId"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1021
    return-void
.end method

.method public toggleSelectState(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 965
    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/Alarm;

    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    .line 967
    .local v0, id:I
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 973
    .end local v0           #id:I
    :cond_0
    :goto_0
    return-void

    .line 970
    .restart local v0       #id:I
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
