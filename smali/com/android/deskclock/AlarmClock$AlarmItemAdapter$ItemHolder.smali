.class public Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field alarm:Lcom/android/deskclock/Alarm;

.field alarmItem:Landroid/widget/LinearLayout;

.field clickableLabel:Landroid/widget/TextView;

.field clock:Lcom/android/deskclock/DigitalClock;

.field collapse:Landroid/view/ViewGroup;

.field dayButtonParents:[Landroid/view/ViewGroup;

.field dayButtons:[Landroid/widget/ToggleButton;

.field daysOfWeek:Landroid/widget/TextView;

.field expandArea:Landroid/view/View;

.field hairLine:Landroid/view/View;

.field infoArea:Landroid/view/View;

.field label:Landroid/widget/TextView;

.field onoff:Landroid/widget/Switch;

.field repeat:Landroid/widget/CheckBox;

.field repeatDays:Landroid/widget/LinearLayout;

.field ringtone:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field vibrate:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 463
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-array v0, v1, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    .line 477
    new-array v0, v1, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    return-void
.end method
