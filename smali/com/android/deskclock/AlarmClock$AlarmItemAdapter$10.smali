.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$buttonIndex:I

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;ILcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iput p3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    iput-object p4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 827
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v2, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    .line 831
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 832
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    aget v1, v2, v3

    .line 833
    .local v1, day:I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2, v1, v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->setDayOfWeek(IZ)V

    .line 834
    if-eqz v0, :cond_2

    .line 835
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    .line 849
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/deskclock/AlarmClock;->access$1200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_0

    .line 837
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$buttonIndex:I

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2100(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;I)V

    .line 840
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    if-nez v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 842
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mColorDim:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$2200(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 843
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1600(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 846
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v4, v4, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
