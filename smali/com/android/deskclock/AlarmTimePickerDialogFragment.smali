.class public Lcom/android/deskclock/AlarmTimePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "AlarmTimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmTimePickerDialogFragment$AlarmTimePickerDialogHandler;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mPicker:Lcom/android/deskclock/TimePicker;

.field private mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmTimePickerDialogFragment;)Lcom/android/deskclock/TimePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mPicker:Lcom/android/deskclock/TimePicker;

    return-object v0
.end method

.method public static newInstance(Lcom/android/deskclock/Alarm;)Lcom/android/deskclock/AlarmTimePickerDialogFragment;
    .locals 3
    .parameter "alarm"

    .prologue
    .line 38
    new-instance v1, Lcom/android/deskclock/AlarmTimePickerDialogFragment;

    invoke-direct {v1}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;-><init>()V

    .line 39
    .local v1, frag:Lcom/android/deskclock/AlarmTimePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "alarm"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->setStyle(II)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 61
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0e0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mSet:Landroid/widget/Button;

    .line 63
    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    .line 64
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/deskclock/AlarmTimePickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmTimePickerDialogFragment$1;-><init>(Lcom/android/deskclock/AlarmTimePickerDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f0e0067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/TimePicker;

    iput-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mPicker:Lcom/android/deskclock/TimePicker;

    .line 71
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mPicker:Lcom/android/deskclock/TimePicker;

    iget-object v3, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mSet:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/deskclock/TimePicker;->setSetButton(Landroid/widget/Button;)V

    .line 72
    iget-object v2, p0, Lcom/android/deskclock/AlarmTimePickerDialogFragment;->mSet:Landroid/widget/Button;

    new-instance v3, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/deskclock/AlarmTimePickerDialogFragment$2;-><init>(Lcom/android/deskclock/AlarmTimePickerDialogFragment;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
